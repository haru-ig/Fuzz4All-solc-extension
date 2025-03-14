pragma solidity ^0.8.0;
contract MutateSemantic5Caller2 {
    event Evt(uint a);
    function modifyC(uint256 x, uint y) public returns (uint256) {
        modifyC(x);
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic4Caller {
    event Evt(uint a);
    function modifyC(uint256 x, uint y) public returns (uint256) {
        modifyC(x+1);
        emit Evt(2);
        return 2;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic4Caller2 {
    event Evt(uint a);
    function modifyC(uint256 x, uint y) public returns (uint256) {
        modifyC(x);
        emit Evt(2);
        return 2;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    mapping(address => uint) public balance;
    function payWithEther() public payable returns (uint256) {   }
    function payWithEtherOrCall(address target, uint256 value) public payable returns (uint256) {   }
}

pragma solidity ^0.8.0;
contract Caller3 is Caller {
    function payWithEtherOrCall(address target, uint256 value) public payable returns (uint256) override {
        return target.call{value: value}("");
    }
}
