pragma solidity ^0.8.0;
contract M {
    uint public x;
    uint public y;
    function f(uint t) public nonpayable {
        x = t;
        (x,y);
    }
}
import "../../../../test/libsol/functionCalls/returnData.sol";
function f(uint x,uint y){
    uint z;


    returnData(x, y, z);
    (x,y,z);
}

pragma solidity ^0.8.0;
contract D {
    address g;
    function f() public payable {
        (,g,_);
    }
}
