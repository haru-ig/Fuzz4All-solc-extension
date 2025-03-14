pragma solidity ^0.8.0;

interface IERC20 {
    function totalSupply() external view returns (uint);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
contract Test33 is IERC20{
    function balanceOf(address account) public view returns (uint) {
        require(account!= address(0), "ERC20: balance query for the zero address");
        return 2;
    }
}

pragma solidity ^0.8.0;
contract Test35{
    address public addr;
    function getData(address account) public view returns (Test33 test){
        return Test33(account);
    }
}

pragma solidity ^0.8.0;

import "./Test11.sol";
contract Test11 {
    function getData() public returns(address add){
        (address _ = address(new Test10()));
        add = _;
        return _;
    }
}
contract Test10 is Test35{
    constructor() {
        addr = 0xCcCCccccCCCCcCCCCCeCCCcCcccccccCCcC;
    }
    address private static addr;
}
```
