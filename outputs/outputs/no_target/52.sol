pragma solidity ^0.8.0;
contract SimpleToken {
    constructor() public { }
   function transferFrom(address from,address to,uint value) public {
        IERC223Token(from).transferFrom(from,to,value);
    }
}

pragma solidity ^0.8.0;
contract ModifiedToken {
    constructor() public { }
    receive {}
}
