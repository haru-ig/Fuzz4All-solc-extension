pragma solidity ^0.8.0;
contract SemanticallyEquivalentM14 {
    constructor () public {
        try {
                assembly {
                    let a := 3
                    let x := mul(a, add(1, 2))
                    let b := sub(x, 2)
                }
        }
    }
}
