pragma solidity ^0.8.0;
contract MutatedExamples9 {
    function mutated(uint x) external view returns(uint y){
    }
}

pragma solidity ^0.8.0;

import "./MutatedExamples8.sol";

contract MutatedExamples10 {
    function mutated(MutatedExamples8 m1, MutatedExamples9 m2) public view returns(uint m1v, uint m1w, uint m1x, uint m1y) {
        (m1v,m1x,m1y) = m1.mutated(0);
        (m1w,m1x,m1y) = m1.mutated(1);
    }
}
