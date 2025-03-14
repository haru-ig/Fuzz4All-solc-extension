pragma solidity ^0.8.0;
contract Contract11Mut3{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function getNumber() public view returns(uint) {
        return num;
    }
    contract Fallback {
        receive() payable external {
        }
    }
    fallback() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    receive() payable external {
    }
}

pragma solidity ^0.8.0;
contract Contract11Mut{
    event Fulfilled(address owner, uint256 indexed value);
    event FulfilledReceiver(address owner, uint256 indexed value);
    uint256 public num;
    function getNumber() public view returns(uint) {
        return num;
    }
    fallback() external {
        num += 1;
        emit Fulfilled(msg.sender, num);
        emit FulfilledReceiver(msg.sender, num);
    }
    receive() payable external {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    receive() external pure {
        num += 1;
        emit FulfilledReceiver(msg.sender, num);
    }
}

pragma solidity ^0.8.0;
contract SolidityCall2 {
    constructor() payable {}
    function pure() external pure {}

    function () external pure {

    }
}

pragma solidity ^0.8.0;
contract SolidityCall{}

pragma solidity ^0.8.0;
contract SolidityCall4 {
    constructor() payable {}
    fallback() external pure {}

    function () external pure {

    }
}
#pragma solidity >=0.8.0 <0.9.0;
interface Erc20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender
