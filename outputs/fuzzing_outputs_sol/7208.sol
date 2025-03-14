pragma solidity ^0.8.0;
contract Example5 {
    constructor() {
    }
    function example5() public payable {
    }
}

pragma solidity ^0.8.0;
contract Caller {
    event Call(address addressToCall, uint value);

    function call(address callTarget, uint value) public payable {
        emit Call(callTarget, value);
        callTarget.call{value}('');
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract ERC20 {
    event Destroy(uint128 amount);
    mapping(address => uint256) public balanceOf;

    function balanceOf(address _who) public view returns (uint256);

    function transfer(address to, uint256 value) public returns (bool);

    function destroy(uint128 amount) public;
}

pragma solidity ^0.8.0;
contract Minter {
    function mint(address _newOwner, uint256 amount) public;
}

pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address owner) external view returns (uint256 balance);

    function transfer(address to, uint256 value) external returns (bool);

    function deposit() external payable;

    function withdraw(uint256 amount) external returns (uint256 deposited);

    function destroy
