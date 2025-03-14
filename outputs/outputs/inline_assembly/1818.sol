pragma solidity ^0.8.0;
contract Example{
    uint public x;
    uint public x1;
    uint public x2;
    uint public x3;
    uint public x4;
    event Moved(uint);
    constructor() public {
        x = 28;
        x1 = 10;
        x2 = 31;
        x3 = 37;
        x4 = 42;
    }
    function set(uint _x, uint _x1, uint _x2, uint _x3) public {
        x = _x;
        x1 = _x1;
        x2 = _x2;
        x3 = _x3;
        emit Moved(_x);
        emit Moved(_x1);
        emit Moved(_x2);
        emit Moved(_x3);
    }
}


pragma solidity ^0.8.0;
interface IOwned{
    function owner() public view returns(address) {}
}
contract Test {
    address private _owner;
    IOwned public ownable;
    address public owner() public view returns (address) {
        return _owner;
    }
    constructor() public {
        _owner = msg.sender;
    }
    function transferOwnership(address owner_) public {
        require(msg.sender == _owner, "Only owner can transfer ownership.");
        _owner = owner_;
        ownable.transferOwnership(_owner);
    }
}

%{
    Solidity.compile();

    import 'owned.sol';

    contract Ownable is owned{


        constructor ()
            public
        {



            _owner = msg.sender;
        }



        function transferOwnership(address newOwner_)
            public
        {

            owned.transferOwnership(newOwner_);



            _owner = newOwner_;
        }
    }
%}.sol
