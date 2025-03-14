pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    modifier onlyPublicModifier(){
        uint _;
        assembly {
        mstore(0x40, mload(_))
        }
        _;
    }

    constructor () {
    }

    function a() public onlyPublicModifier{
    }
}
```

- **Error** 26: Cannot access the parent constructor outside of the constructor. The parent constructor is invoked by the constructor below. Add this modifier to the constructor below and use it inside the modifier.

**Solution:** The solution is to add this modifier to your constructor (before the constructor where the constructor will be invoked).
```javascript
pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    constructor () {
    }

    function a() public {


        constructor(uint256 _param) {

          publicModifierField = _param;
        }
      }
}
