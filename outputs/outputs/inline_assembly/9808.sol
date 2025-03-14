pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    constructor () {
    }
    function a() public {
        assembly {
        }
    }
    function b() public {
        assembly {
            _;
            _;
          }
    }
    function c() public {
        assembly {
            _,_,_;
            _,_,_;
          }
    }
    function d() public {
        assembly {
            _,_,_;
            _,_,_;
            _,_,_;
          }
    }
    function e() public {
        assembly {
            _,_,_;
            _,_,_;
            _,_,_;
            _,_,_;
            _,_,_;
          }
    }
}
