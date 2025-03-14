pragma solidity ^0.8.0;
contract Semantic0028_1 {
    function mutant() public pure returns (string memory){
        bool flag = isTrue00();
        if (flag) {
            return "abc";
        }
        return aM00();
    }

    function aM00() public pure returns (string memory){
        bool flag = isTrue00();
        if (flag) {
            return "abc";
        }
        return aM001();
    }

    function aM001() public pure returns (string memory m) {
        m = "xyz";
    }
}

contract Semantic0028_2{
    function mutant() public pure returns (string memory m){
        if (m == "abc") {
            return true;
        }
        return false;
    }
}

contract Semantic0028_3{
    function mutant() public pure returns (string memory m) {
        if (true) {
            m = "abc";
        }
        else{
            m = "xyz";
        }
    }
}

contract Semantic0028_4 {
    function mutant() public pure returns (string memory m) {
        if (true) {
            m = "abc";
        }
        else if(false) {
            m = "mdd";
        }
        else {
            m = "mno";
        }
    }
}

contract Semantic0028_5 {
    function mutant() public pure returns (string memory m) {
        uint x;
        if(true && (x < 0)) {
            m = "mdd";
        }
        else {
            m = "mno";
        }
    }
}
