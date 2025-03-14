pragma solidity ^0.8.0;
interface mapmap
{
    function f() public returns (uint);
    function g() public returns (uint);
}

pragma solidity ^0.8.0;
contract CallerContract {
    event Moved(address oldOwner, address newOwner);

    mapmap constant m = mapmap([mapmap.key(0, 0), mapmap.key(0, 0)]);
    address public caller;

    function CallerContract() {
        caller = msg.sender;

        (,,) = m.get(0, 0);
    }

    function getCaller() public view returns(address) {

        return caller;
    }

    function transferCaller() public {

        (, caller) = m.get(0, 0);
        emit Moved(caller, msg.sender);
    }
}
