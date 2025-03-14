pragma solidity ^0.8.0;
contract G {
    uint256[2] private x;
    constructor(uint256[2] memory input, uint arg) public {
        x[0] = input[0];
        x[1] = input[1];
        x[0] = arg;
    }
}



  pragma solidity ^0.8.0;
library GOS {


        uint256[2] private dynamicArray;
        constructor(uint256[2] memory input, uint arg) public {

            dynamicArray[0] = input[0];
            dynamicArray[1] = input[1];
            dynamicArray[1] = arg;
        }

    }
}




  pragma solidity ^0.8.0;
library GOS {


     function length() public view returns(uint256);


     function dynamicArrayCopy(uint256 index) public view returns(uint256);
}
```
<pre style="color:green">Error: (239-281): Invalid input argument type: 'uint256[]' (expected non-dynamic array type)</pre>


```solidity

pragma experimental ABIEncoderV2;


```solidity

pragma experimental ABIEncoderV2;


```solidity

pragma solidity ^0.8
