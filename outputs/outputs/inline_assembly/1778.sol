pragma solidity ^0.8.0;
contract Example{
    uint x;

    fallback () public {
        x = 9;
    }

    function setXZero() public {
        x = 0;
    }
}
contract OtherExample{
uint x;
function setXZero() public {
    x = 0;
}
}


pragma solidity ^0.8.4;
 contract MemoryExample {

    uint a;
    uint [] memory  b;
    uint [42] memory  c;

    function reset() public {
        a = 10;
        b = new uint[](5);
        c = new uint[](5);
    }

    function append() public {
        b.push(20);
        c.push(10);
    }
}
pragma solidity ^0.8.4;
 contract DataExample {

    uint a;
    uint [42] memory b;
    uint [] memory  c;

    function test() public {
        set();
        get();
    }

    function set() public {
        data(20);
    }

    function get() public {
        data(10);
    }

    function data(uint n) private {
        b.push(n);
    }
}









contract Context {

    function _msgSender() internal view virtual returns ( address sender) { }

    function _msgData() internal view virtual returns ( bytes memory data) { }
}


abstract contract Ownable is Context {

    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


    constructor () internal {
        address messageSender = _msgSender();
        _owner = messageSender;
        emit OwnershipTransferred(address(0), messageSender);
    }


    function owner() public view virtual returns (address) {
        return _owner;
    }


    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to
