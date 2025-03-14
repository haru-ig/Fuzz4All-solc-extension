pragma solidity ^0.8.0;
contract test {
    function Mutate(uint256 x) public{
        testArr[0] = x;
        testArr[testArr.length - 1] = x;
        testArr.length += 2;
    }
}

pragma solidity ^0.8.0;
library test{
    uint value;
    function Set(uint x) public{
        value = x;
    }
    function Get() public pure returns(uint){
        return value;
    }
}

pragma solidity ^0.8.0;
library test{
    uint value;
    constructor(){
        value = 100;
    }
    function Modify(uint x)public{
        value = x;
    }
}

pragma solidity ^0.8.0;
contract test{
    uint value;
    function Create() public{
        value = 100;
    }
    address[] memory addr;
    function Add(address _addr) public{
        addr.push(_addr);
    }
    function Get() public view returns(address[] memory){
        return addr;
    }
    function Delete() public{
        value = 0;
    }
    function Set(address[] memory _addr) public{
        addr = _addr;
    }
}
