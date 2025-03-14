pragma solidity ^0.8.0;

contract Test{
    struct Record{
	    string  name;
	    bool    isRegistered;
    }

	    Record memory record = Record({
		    name: 'Alice',
		    isRegistered: true
	    });
}
