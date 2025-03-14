pragma solidity ^0.8.0;
contract C {
    function a() {
        assembly {
        }
        C.a();
    }
}


pragma solidity ^0.8.0;
contract C {
    function a(uint i) {
        assembly {
        }
        C.a(i);
    }
}
