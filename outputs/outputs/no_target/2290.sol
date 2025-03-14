pragma solidity ^0.8.0;
contract mutation0b32_new {
    bool immutable flag;
    constructor(bool _flag) public {
        flag = _flag;
    }
    function changeFlag(bool _flag) public {
        flag = _flag;
    }
    function() view public {
        if(flag)
            revert();
    }
}


pragma solidity ^0.8.2;
contract mutation0b32 {
    function getCount() public pure returns(uint256 count) {
        count = 0;
    }
     function getCountOldFunction() public pure returns(uint256 count) {
        count = 0;
	}
     function getCountNew() public view returns(uint256 count) {
        count = 0;
    }
}
