pragma solidity ^0.8.0;

contract Contract4 is Fallback4
{
     function a(uint64 x) external {
            if (x > 0) return;
            a(x + 1);
            b(x + 1);
            b(x);
     }

     function b(uint64 x) external {
            if (x > 0) return;
            call();
     }
     fallback(){
            call();
     }
}

function main() {
     assembly {
       let c := mload(0)
       let _ = value(calldatacopy( 0, 16))
       if (iszero(c)) {
             let f := Contract4(add(c, 0x20))
             f.a(add(add(c, 0x20), 0x8))
       } else {
             let f := Contract4(add(c, 0x20))
             let _ = valuecall()
             f.a(add(add(c, 0x20), 0x14))
       }
     }
}
