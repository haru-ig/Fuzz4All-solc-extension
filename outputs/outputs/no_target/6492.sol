pragma solidity ^0.8.0;
contract modifierB{
    function f() public view returns (uint256){
        uint256 x;
        x++;
        x -= 256;
        return x;
    }
}
contract myContractB is modifierB{
}
contract myContractC is modifierB{
}
contract myContractD is modifierB{
}
contract myContractE is modifierB{
}
contract myContractF is modifierB{
}
contract myContractG is modifierB{
}

pragma solidity ^0.8.0;
contract modifierA2{
    function f() public view returns (uint256){
        uint256 x;
        x -= 256;
        return x;
    }
}
contract modifierB2{
    function f() public view returns (uint256){
        uint256 x;
        x += 256;
        x -= 256;
        return x;
    }
}
contract myContractA2 is modifierA2, modifierB2{
}
contract myContractB2 is modifierA2, modifierB2{
}
contract myContractC2 is modifierA2, modifierB2{
}
contract myContractD2 is modifierA2, modifierB2{
}
contract myContractE2 is modifierA2, modifierB2{
}
contract myContractF2 is modifierA2, modifierB2{
}
contract myContractG2 is modifierA2, modifierB2{
}
contract myContractA3{
    function f() public view returns (uint256){
        uint256 x;
        uint256 y;
        uint256 z;
        x -= 5;
        y +="abc";
        z += hex"00";
    }
}
contract myContractB3{
    function f() public view returns (uint256){
        uint256 x;
        uint256 y;
        uint256 z;
        x += 5;
        y = "abc";
        z += hex"00";
    }
}
contract myContractC3{
    function f() public view returns (uint256){
        uint256 x;
        uint256 y;
        uint256 z;
        uint256 x2;
        x2 = 5;
        x += x2;
        y = "abc";
        z += hex"00";
    }
}
contract myContract
