pragma solidity ^0.8.0;
contract Unchecked {
    uint constant ONE = 1;
    function get(uint a, uint b) public view returns (uint) {
    	require (1 + a == b, "bad");
    	uint answer = 1 * ONE + b;
    	require (answer == b, "Wrong addition");
        return answer;
    }
    }
contract TryAndThrowUnchecked {
    uint constant ONE = 1;
    uint constant MAX = 9;
    function get(uint a, uint b) public view returns (uint) {
        uint answer;
        try (a / b, b / a) {
        answer = a - b;
        } catch (Error) {
        revert(a, b);
        }
        require (answer < b, "bad!");
        return answer;
        }
        revert(ONE, MAX);
    }
}
uint test = 1 + 2;
