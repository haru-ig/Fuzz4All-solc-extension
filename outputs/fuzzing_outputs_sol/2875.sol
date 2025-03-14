pragma solidity ^0.8.0;
contract Bar {
    bool v = true;

    receive () payable {
       v = false;
    }

    fallback () {

       require(address(this).balance == 0);
    }


    receive () {
    }
}
