pragma solidity ^0.8.0;
contract semanticallyEquiv3{
    function equivalence() view public static returns(address){
    }
    function equivalence2() view public static returns(uint256){
            return 1;
    }
    function equivalence3() view public static returns(address){
        return address(new semanticallyEquiv2());
    }
}
