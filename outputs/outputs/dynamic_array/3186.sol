pragma solidity ^0.8.0;
contract DynamicArrayTest
{
    uint[] arr;
    uint size;
    uint maxSize;
    bytes5 constant test_addr5 = bytes5(msg.sender);
    function() public payable {
        uint i=0;
        bool passed=false;
        while(i<size) {
            if ( arr[i]==0 ) {
                arr[i] = msg.value;
                i++;
            }
        }

        if ( arr[i] > 0) {
            passed = true;
            arr[i]=0;
        }


        for (uint j=0; j<i; j++) {
            if (!passed) {
                break;
            }
            passed = false;
        }

        require(passed);
    }

    function() public payable {
        uint i=0;
        bool passed=false;
        while(i<sizeof(arr)/2) {
            if ( arr[i] == 0 ) {
                a = msg.value;
                arr[i] = test_addr5;
                if (keccak256(keccak256(x"f0678b42a655d1a8d85fadefe739978077b0ee6088388cf2bf33c66a031c65c0")).toUint() > 0) {
