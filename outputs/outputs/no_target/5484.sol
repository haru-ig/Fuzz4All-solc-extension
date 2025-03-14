pragma solidity ^0.8.0;
import "O.sol";
contract Mutator is O {
    uint constant internal _uintConstant = 0xf040cafe;
    O private _previousO;
    function setPreviousO(O _previousO_) public {
        _previousO = _previousO_;
    }
    function m1() public returns (bool) {
        x = x.add(3);
        return (x == _uintConstant);
    }
    function m2() public returns (bool) {
        _previousO.y(y(x));
        return (y(x) == 4);
    }
}
contract Test1 is Mutator {
    xchange event X = O.xchange;
}
contract Test2 is Mutator {
}
contract Test3 is Mutator {
    function test() public {
        require(m2());
        require(m1());
    }
}
