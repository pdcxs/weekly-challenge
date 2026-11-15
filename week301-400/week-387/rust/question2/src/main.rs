use pest::{Parser, iterators::Pairs};
use pest_derive::Parser;
use std::collections::BTreeMap;
use std::fmt::Write;

#[derive(Parser)]
#[grammar = "grammar.pest"]
struct FormulaParser;

type Form = BTreeMap<String, u32>;

fn main() {
    let mut input = String::new();
    std::io::stdin().read_line(&mut input).unwrap();
    println!("{}", solve(input.trim()));
}

fn solve(formula: &str) -> String {
    let pairs = FormulaParser::parse(Rule::Formula, formula).unwrap();
    let form = parse_from_formula(pairs.into_iter().next().unwrap().into_inner());
    format_form(&form)
}

fn parse_from_formula(pairs: Pairs<'_, Rule>) -> Form {
    let mut result = Form::new();
    for pair in pairs {
        match pair.as_rule() {
            Rule::Term => {
                merge_into(&mut result, parse_from_term(pair.into_inner()));
            }
            r => panic!("unknown rule: {:#?}", r),
        }
    }
    result
}

fn parse_from_term(pairs: Pairs<'_, Rule>) -> Form {
    let mut result = Form::new();
    let mut multiplier = 1u32;
    for pair in pairs {
        match pair.as_rule() {
            Rule::Atom => {
                *result.entry(pair.as_str().to_owned()).or_default() += 1;
            }
            Rule::Formula => {
                merge_into(&mut result, parse_from_formula(pair.into_inner()));
            }
            Rule::Int => {
                multiplier = pair.as_str().parse().expect("Int rule should parse");
            }
            e => panic!("not atom: {:#?}", e),
        }
    }
    if multiplier != 1 {
        for v in result.values_mut() {
            *v *= multiplier;
        }
    }
    result
}

fn merge_into(a: &mut Form, b: Form) {
    for (k, v) in b {
        *a.entry(k).or_default() += v;
    }
}

fn format_form(form: &Form) -> String {
    let mut out = String::new();
    for (k, v) in form {
        out.push_str(k);
        if *v > 1 {
            write!(out, "{}", v).unwrap();
        }
    }
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn examples() {
        assert_eq!(solve("((N2O)3(H2O)2)2"), "H8N12O10");
        assert_eq!(solve("Mg3(PO4)2"), "Mg3O8P2");
        assert_eq!(solve("(((H)2)3)4"), "H24");
        assert_eq!(solve("NaCl3(O2(S10)2)2Mg"), "Cl3MgNaO4S40");
        assert_eq!(solve("Z2Y3(X2W)2"), "W2X4Y3Z2");
    }
}
