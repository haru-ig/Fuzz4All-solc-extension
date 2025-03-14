pragma solidity ^0.8.0;
contract TokenContract {
    function getTokenAddress() public returns (address) {
    }
}

pragma solidity ^0.8.0;
contract TokenContract {
    function getTokenAddress() public returns (address) {
        return address(new TokenContract());
    }
}
/* The provided documentation describes several Solidity applications, illustrated in the following pictorial diagram:

*Please use the "Open" button to open the provided picturom diagram in the browser. The original diagram was used to develop the examples in the main documentation, please make sure that it is not copied from elsewhere.*

![Solidity Application Pictures Diagram](Resources/SolidityApplicationPictures-Diagram.png)

The provided documentation will allow you to read and understand the following important details:

*Please create your own applications that call certain contracts, they are not intended to implement the provided code. You will have to use some of the provided code as examples. You are free to use your own code. You will have to keep at it's own pace, for example, not to create a fully operational application every day; please use what works best for you as a starting point. *

*Please do not modify the provided source code in any way. It is not possible to make changes to the code in any way. Please do not submit any code you do not understand to any other repository that is not intended to contain examples. We will not be able to correct the mistakes you may have made in your modified code.*

*We request that you include and explain to us the code you are working on with comments that explain why your code is useful. It is not ok to submit any code that has not been properly explained.*

The provided documentation should give you an understanding of how all the programs above work. Please proceed with your analysis. By the end of the analysis, you can decide what contract addresses are to be deployed in which environments.
