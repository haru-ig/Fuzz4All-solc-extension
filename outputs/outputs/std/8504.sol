pragma solidity ^0.8.0;
contract MutationEquivalence1
{
    string internal test = "<0>foo";
    function f() public view {
        emit e(test);
    }
    function g() public view {
        assembly {
            let t := mload(0x40)
            let addr := mload(t)
            mstore(t, add(addr, mload(test)))
        }
    }
    function h() public view {
        address x;
        (x,) = g();
        test = x.toString();
    }
    fallback() public {
    }
    event e(string);
}


pragma solidity ^0.8.0;
contract MutationEquivalence2
{
    string internal test = "<0>foo";
    function f() public view {
        emit e(test);
    }
    function g() public view {
        assembly {
            let t := mload(0x40)
            let addr := mload(t)
            mstore(test, add(addr, mload(test)))
        }
    }
    function h() public view {
        address x;
        (x,) = g();
        test = x.toString();
    }
    fallback() public {
    }
    event e(string);
}
