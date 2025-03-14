pragma solidity ^0.8.0;
contract first{
    uint p;
    function g() public pure returns(uint) {
        p = 20;
        return p/2;
    }
}

pragma solidity ^0.8.0;
contract test{
    function f() public pure returns(uint){
        return 0xffffffffffffffffffff;
    }
}

pragma solidity ^0.87.0;
contract test{
    function f() public pure returns(uint){
        return uint11(0xffffffffffffffffffff);
    }
}

contract TestWithErrors{
    function f() public view returns(uint){
        return 0xffffffff + (1);
    }
    function g() pure public{
        assembly {
            mstore(0xc0, 0xe9069704803e90878036908281813b80803908080369083607915)
            return()
        }
    }
}

contract Ownable {
    address public msgSender;
    address internal root;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    modifier onlyRoot {
        require(msgSender == root, "only root can call this function.");
        _;
    }
    function init(address _root) public onlyRoot {
        root = _root;
        msgSender = msg.sender;
    }
    function transferOwnership(address newOwner) public onlyRoot {
        emit OwnershipTransferred(root, newOwner);
        root = newOwner;
    }

    function setRoot(address _root) public {
        onlyRoot;
        root = _root;
    }
}

contract F {
    function g() public pure returns(uint) {
        return 7000 * (10 ** 2);
    }
}
