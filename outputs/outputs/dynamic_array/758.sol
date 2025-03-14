pragma solidity ^0.8.0;
contract Test {

    function notTrue() public {
        bytes memory bytesData = byteStringToArray("HelloWorld");
        Test.isTrue(keccak256(bytesData) == keccak256("0x688c14715c5394791c2fe9f487782a8fa972b72f859c2b79e858e5ad3975c079"));
        Test.isTrue(keccak256(bytesData) == keccak256("0x03ffffff3af4d4548cd00ef63ef4e50327e96ca12e8f43bb17610f7a9213737a"));
    }


    contract BytesToStringBytes {
        function keccak256(bytes memory x) public pure returns(bytes32 y){
            return keccak256(bytes(x));
        }
    }


    contract byteStringToArray {
        function length(bytes x) public pure returns(uint l){
            if(x == "" || x == bytes(0)) return(0);
            for(uint i=0; i<x.length; i++){
                if(x[i] == 0) continue;
                l++;
            }
            return(l);
        }

        function byteStringToArray(bytes memory _s) public pure returns(bytes _arr) {
            if(length(_s) == 0) _arr = new bytes(0);
            else {
                uint size = length(_s);
                _arr = new bytes(size);
                uint n = 0;
                for(uint i = 0; i < _s.length; i++) {
                    _arr[n++] = _s[i];
                }
            }
        }
    }
}
