pragma solidity ^0.8.0;
contract Difference {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (answer == a + 1);
    return answer + 1;
}
}
contract Comparison {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (answer >= a + 1);
    return answer;
}
}
contract Compatibility {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (answer == a + 1);
    return answer > 0;
}
}
contract ComparisonWithReverts {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (true);
    return answer + 1;
}
}
contract DifferenceWithReverts {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (true);
    return answer + 1;
}
}
contract ComparisonWithRevertsAndAssertions {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (b > a);
    require (10 > 1);
    return a + 1;
}
}
contract Reverts {
address a;
function get(uint a, uint b) public view returns (uint) {
    uint answer = 1 * 10 + b;
    require (true);
    assert(false);
    return answer;
}
}
