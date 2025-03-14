pragma solidity ^0.8.0;
contract CoB{
    uint x = 1;
    uint y = 2;
    x = x + y;
    y = y + x;
}

pragma solidity ^0.8.0;
contract CoC{
    uint x = 1;
    uint y = 2;
    function change() public {
        x = 1;
        y = 2;
    }
}

pragma solidity ^0.8.0;
contract CoD{
    uint x = 1;
    uint y = 2;
    contract inner {
        uint x;
        uint y;
      inner () public {
       x = 1;
       y = 2;
        }
    }
    inner c;
    c.x = c.y;
    c.y = c.x;
    c.x = 2;
    c.y = 3;
}

pragma solidity ^0.8.0;
contract CoE{
    uint x = 1;
    uint y = 2;
    contract inner5 is IERC1155Holder {
        uint y;
        constructor() public {
            x = 1;
            y = 2;
        }
        function balanceOf(address owner) public view returns (uint) {
            x = 1;
            y = 2;
            return x;
        }
        function balanceOf(uint id) public view returns(uint) {
            x = 1;
            y = 2;
            return x;
        }
        function safeTransferFrom(address from, address to, uint256 id, uint256 amount) onlyHolder(from) public {
           x = 1;
           y = 2;
        }
        function safeBatchTransferFrom(address from, address to, uint256[] memory ids, uint256[] memory amounts) onlyHolder(from) public returns(bool) {
           x = 1;
           y = 2;
        }
    }
    inner5 c;
    c.y = c.x;
    c.x = 2;
    c.y = 3;
}

pragma solidity ^0.8.0;
contract CoF{
    uint x = 1;
    inner inner6;
    address x2;
    modifier modifier1() {
      x =
