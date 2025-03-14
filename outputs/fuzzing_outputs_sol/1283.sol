pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated {
        fallback() external payable {
            modifier(uint4 i) {
                console.log('modifier:', i.sub(42));
                _;
            }
            uint4 a;
            a = i;
        }
}




pragma solidity ^0.8.0;
contract FallbackEquivalenceOriginal {
    function() external payable {
        console.log('fallback! No data! It doesn\'t matter!');
    }
    fallback() external payable{}
}
