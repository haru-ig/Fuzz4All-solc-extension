pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract C {
    function callToMutator(MyStruct memory x) internal pure returns(MyStruct memory,MyStruct memory) {
        return (Lib.mutator(x),x);
    }

    function callToMutator2(MyStruct memory x) internal pure returns(MyStruct memory,MyStruct memory) {
        return (x,Lib.mutator2(x));
    }

    function mutator2(MyStruct memory x) internal pure returns(MyStruct memory) {
        x.a*=1;
        x.a*=10;
        x.a*=100;
        return x;
    }
}

mutator(C.callToMutator2(C.callToMutator(C.callToMutator(C.callToMutator(MyStruct({a:5}))))))

contract B {


    function mutator(MyStruct memory x) internal pure returns (MyStruct memory) {
        x.a*=1;
        x.a*=10;
        x.a*=100;
        return x;
    }
}
