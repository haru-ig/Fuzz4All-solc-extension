pragma solidity ^0.8.0;
contract SymbolicEquality_Assignment_Synthetic {
    struct MyStruct {
        int i;
    }
        contract M {
        mapping(bytes32 => MyStruct) myMap;
        bytes32 constant myMap_key = keccak256(abi.encodePacked("abc"));

            constructor () public {
                myMap[myMap_key] = MyStruct(5);
            }

        function g() internal view returns (MyStruct memory) {
            return myMap[myMap_key];
        }

        function m() public view returns (MyStruct memory) {
            return g();
        }
    }
        contract G {
            struct MyStruct {
                int i;
            }

            mapping(bytes32 => MyStruct) myMap;

            constructor () public {
            myMap[keccak256(abi.encodePacked("abc"))] = MyStruct(5);
            }

            function g() internal view returns (MyStruct memory) {
                return myMap[keccak256(abi.encodePacked("abc"))];
            }

            function m() public view returns (MyStruct memory) {
                return g();
            }
        }
        constructor () public {
        g.m.m();
    }
}
