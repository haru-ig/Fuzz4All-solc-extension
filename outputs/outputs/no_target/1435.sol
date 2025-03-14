pragma solidity ^0.8.0;
contract Semantic0029 {
    function mutant() public pure {
        if (true) {
            return true;
        }
        else {
            return false;
        }
    }
}

contract Semantic0033 {
    function mutant() public pure {
        if (true) {
            if (true) {
                return;
            }
            else {
                return;
            }
        }
        else {
            return;
        }
    }
}

contract Semantic0034 {
    function mutant() public pure {
        if (true) {
            if (true) {
                if (true) {
                    return;
                }
                else {
                    return;
                }
            }
            else {
                return;
            }
        }
        else {
            return;
        }
    }
}

contract Semantic0035 {
    function mutant() public pure {
        if (true) {
            if (true) {
                if (true) {
                    if (true) {
                        return;
                    }
                    else {
                        return;
                    }
                }
                else {
                    return;
                }
            }
            else {
                return;
            }
        }
        else {
            return;
        }
    }
}
