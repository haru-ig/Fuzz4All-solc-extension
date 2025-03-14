pragma solidity ^0.8.0;
contract Example {
    uint x;

    Example oldExample = Example(address(0));
    constructor () public {

        oldExample = Example(Example.original());
        x = oldExample.y;
    }

    function original() private pure returns (Example) {
      Example copy = new Example();
      return copy;
    }
    function mutate() public {
        x = oldExample.x + 1;
    }
}
*/ contract Example {
    uint x;
    uint y;
    address public owner;
    struct PrivateStruct { string content; }
    event NewContent(string);
    modifier privateSafe() {
        uint _x = x;
        uint _y = y;
        require(_x > _y, "Not greater than x");
        _;
        owner.transfer(_y);
    }
    modifier publicSafe {
        uint _x = x;
        uint _y = y;
        owner.transfer(_x);
        _;
        owner.transfer(_y);
    }
    constructor (address _parent) public {
        owner = _parent;
    }
    function content() public view returns(PrivateStruct memory) {
        return PrivateStruct({ content : "Content here" });
    }
    function modifyContent() public privateSafe returns(PrivateStruct memory) {
        string memory newContent = "I changed the content";
        x = oldExample.x;
        y = oldExample.y;
        privateSafe();

        emit NewContent(newContent);
        return PrivateStruct({ content : newContent });
    }
    function changeAddress(address newAddress, uint newX) public publicSafe {
        uint oldX = x;
        uint oldY = y;
        y = newX;
        x = oldX - 2;
        owner.transfer(oldY - oldX);
    }
}
contract Example {
    uint x;
    uint y;
    address public owner;
    address originalOwner;
    modifier publicSafe {
        uint _x = x;
        uint _y = y;
        owner.transfer(_x);
        _;
        owner.transfer(_y);
    }
    modifier privateSafe {

        originalOwner.transfer(_y);
        originalOwner.transfer(_x);
        _;
        owner.transfer(_y);
        owner.transfer(_x);
    }
    constructor (address _parent) public {
        owner = _parent;
        originalOwner = address(Example(_parent).content().content);
