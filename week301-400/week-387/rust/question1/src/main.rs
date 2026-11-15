fn main() {
    let mut input = String::new();
    std::io::stdin().read_line(&mut input).unwrap();
    println!("{}", solution(&input));
}

fn solution(input: &str) -> u32 {
    let mut n: u32 = 0;
    let mut input = input.to_string();
    loop {
        let new = input.replace("01", "10");
        if new == input {
            break;
        }
        input = new;
        n += 1;
    }
    n
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test() {
        assert_eq!(solution("111000"), 0);
        assert_eq!(solution("00011"), 4);
        assert_eq!(solution("01011"), 3);
        assert_eq!(solution("010101"), 3);
        assert_eq!(solution("00001"), 4);
    }
}