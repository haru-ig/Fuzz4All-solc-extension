pragma solidity ^0.8.0;
contract C3 {
    function setfoo(address caller) public {
    }
    function setaddress(C3 x) public {
    }
    function setuint256(uint256 x) public {
    }
    function setpair(address x,address y) public {
    }
}

<fim_middle>contract C3 {

    function setfoo(address caller) public {
        bytes memory zzz;
    }
    function setaddress(C3 x) public {
        x;
        bytes memory zzz;
    }
    function setuint256(uint256 x) public {
        x;
        bytes memory zzz;
    }
    function setpair(address x,address y) public {
        require((uint256(x) == 1)&&(uint256(y) == 1));
        require(address(x) == address(C3));
        require(address(y) == address(C3));
        bytes memory zzz;
    }
}
