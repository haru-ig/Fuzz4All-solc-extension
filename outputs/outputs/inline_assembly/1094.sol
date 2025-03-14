pragma solidity ^0.8.0;
contract MutatedContract {
	function() {


		uint x;

		Constructor();

		IsMutated();

		Call();

		Pure();

		LogEvent();
	}
}

constructor () {
}

modifier IsMutated() {
	stateVariable += 1;
	stateVariable /= 2;
}



call (): x;


pure function Pure() {
	return x;
}

modifier LogEvent() {
	stateVariable += 1;
}

event LogEvent();
```
