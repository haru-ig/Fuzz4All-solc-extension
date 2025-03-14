pragma solidity ^0.8.0;
contract MutatedContract {
	constructor(address _init) {

        MutatedContract storage _storage = MutatedContractStorage(_init);


        _storage.firstName = "Amy";
        _storage.lastNames = "<NAME>";
    }

    function setFirstName(string memory _name) {

        MutatedContractStorage storage _storage = MutatedContractStorage(address(this));


        _storage.firstNames = _name;
    }

    function setLastName(string memory _name) {

        MutatedContractStorage storage _storage = MutatedContractStorage(address(this));


        _storage.lastNames = _name;
    }

    function getFirstName() public view returns (string memory) {

        MutatedContractStorage storage _storage = MutatedContractStorage(address(this));


        return _storage.firstNames;
    }

    function getLastName() public view returns (string memory) {

        MutatedContractStorage storage _storage = MutatedContractStorage(address(this));


        return _storage.lastNames;
    }
}



contract MutatedContractStorage {
    address private _init;

    modifier _initOnly {
        require(_init == address(0), "Can't redeploy");
        _;
    }

    function init(address _init) _initOnly internal {
        _init = _init;
    }

    string private _firstNames;
    string private _lastNames;

    constructor(address _init) {
        init(_init);
    }

    function getFirstNames() public view returns (string memory) {
        return _firstNames;
    }

    function setFirstNames(string memory _firstNamesValue) public {
        _firstNames = _firstNamesValue;
    }

    function getLastNames() public view returns (string memory) {
        return _lastNames;
    }

    function setLastNames(string memory _lastNamesValue) public {
        _lastNames = _lastNamesValue;
    }
}
