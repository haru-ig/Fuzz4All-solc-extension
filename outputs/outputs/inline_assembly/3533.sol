pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYul {
    address constant ZERO = address(0);
    address constant ONE = address(1);
    address constant TWO = address(2);
function change1 (address a) public {
    a = ONE;
    a = ONE;
    a = TWO;
    a = TWO;
    a = ONE;
    a = TWO;
    a = ONE;
}
function change9 (address a) public {
    a = ZERO;
    a = ONE;
    a = TWO;
    a = ONE;
    a = TWO;
    a = ONE;
    a = TWO;
    a = TWO;
    a = ONE;
    a = ZERO;
    a = ONE;
    a = ZERO;
    a = ONE;
}
function change2 (address a) public {
    a = TWO;
    a = ONE;
    a = ZERO;
    a = ONE;
    a = ONE;
    a = ZERO;
    a = ONE;
    a = ZERO;
    a = ONE;
}

}
