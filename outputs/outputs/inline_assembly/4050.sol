pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence2 is SemanticsEquivalence24xEquivalence {
    function foo() public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 1), mload(add(x2, 1)))
            mstore(add(add(x1, 1), 1), mload(r))
            {
                let tmp := x2
                x2 := x1
                x1 := tmp
            }
        }
    }
}
contract SemanticsEquivalence is SemanticsEquivalence24xEquivalence2 {
    function foo2() public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 1), mload(add(x2, 1)))
            mstore(add(add(x1, 1), 1), mload(r))
            mstore(add(add(x2, 1), 1), r)
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence3 is SemanticsEquivalence24xEquivalence {
    function foo3() public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 1), mload(add(x2, 1)))
            mstore(add(add(x1, 1), 1), mload(r))
            {
                let tmp := x2
                x2 := x1
                x1 := tmp
                let tmp := r
                r := add(r, r)
                r := add(r, tmp)
            }
            r := add(r, add(x2, r))
            store(add(x2, 1), r)
        }
    }
}
contract SemanticsEquivalence3 is SemanticsEquivalence24xEquivalence3 {
    function foo4() public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 1), mload(add(x2, 1)))
            mstore(add(add(x2, 1), 1), mload(r))
            mstore(add(add(x1, 1), r), add(r, add(x2, add(r, add(r, x2))))
            m
