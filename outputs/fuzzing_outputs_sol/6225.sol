pragma solidity ^0.8.0;


function doSomething (uint counter, uint gasLimit, uint counterExpected, uint gasLimitExpected) external {
	counter++;
	uint gasConsumed = gasLeft();
	bool test = gasConsumed >= gasLeft();
	assert(test);

	if (counter == counterExpected && gasLimit == gasLimitExpected) {

        assert(gasConsumed == gasLeft());
    }
}


pragma solidity ^0.8.0;
contract Caller {
    function doSomething(uint counter, uint counterExpected, uint counterFallback, uint gasLimitExpected, uint gasLimitFallback) public {
        doSomething(counter, gas(0), counterExpected, gasLimitExpected);
        doSomething(counter, gas(0), counterFallback, gasLimitFallback, gasLimitExpected);
    }
}
