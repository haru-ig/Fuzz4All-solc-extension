pragma solidity ^0.8.0;
interface Bar {
    function setfoo(address _foo) external;
}

pragma solidity ^0.8.0;
interface Bar {
    function setfoo(address _foo) external;
    function getfoo() external view returns (address);
}

pragma solidity ^0.8.0;
contract Bar is Bar{
    mapping(address => bool) public bools;

    constructor() {
        bools[msg.sender] = true;
    }

    function getfoo() public view returns (address){
        return bools[msg.sender]? msg.sender : address(0);
    }

    function setfoo(address _foo) public {
        bools[_foo] = true;
    }
}
