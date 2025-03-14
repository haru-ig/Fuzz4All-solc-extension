pragma solidity ^0.8.0;
contract Mutator2_1 {
    constructor() public {}
    function testMethod(int[] memory v) public {
        assembly {
            mstore8(v[100], 123)
        }
    }
}



contract Solidity013 {
    function mutate_method(Mutator2 __instance) public {
        __instance.testMethod(new int[](1));
    }

    function mutate_method_1(Mutator2_1 __instance) public {
        __instance.testMethod(new int[](1));
    }
}

pragma solidity ^0.8.4;
pragma experimental ABIEncoderV2;
abstract contract Ownable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }

    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }

    function isOwner() public view virtual returns (bool) {
        return _owner == msg.sender;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address newOwner) internal virtual {
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
pragma experimental ABIEncoderV2;



interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256 balance);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
