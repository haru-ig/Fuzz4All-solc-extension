pragma solidity ^0.8.0;
contract Test {
    address[] public arr;
    function test() public {
        address[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            _store(i);
        }
    }
    function _store (uint i) private {
        arr[i] = address(this);
    }
}



contract ReentrancyBug2 {
    uint count;
    function bad() public {
        bool x = count<2;
        if (x) {
            bad();
            count+=1;
        }
    }
    function good() public {


        _doGood();
    }
    function _doGood() internal {
        bool x = count<2;
        if (x) {
            bad();
            count+=1;
            _doBad();
        } else {
            _doGood();
        }
    }
    function _doBad() internal {

        count++;
    }
}

import './ReentrancyBug2.sol';
contract ReentrancyBug3 {
    uint[] arr;
    uint count;
    function bad() public {
        bool x = arr[count]<2;
        if (x) {
            bad();
            arr[count] += 1;
        }
    }
    function good() public {


        _doGood();
    }
    function _doGood() internal {
        bool x = arr[count]<2;
        if (x) {
            bad();
            arr[count] += 1;
            _doBad();
        } else {
            _doGood();
        }
    }
    function _doBad() internal {
        arr[count] += 1;
    }
}
