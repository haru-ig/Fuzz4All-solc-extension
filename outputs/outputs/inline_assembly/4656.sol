pragma solidity ^0.8.0;

contract mutator158 {
	bool private _isActivatedA = true;

	bool public isActivatedA {
		get{ return _isActivatedA; }
		set{ _isActivatedA = value; } }

function setActiveA () public { isActivatedA =!isActivatedA ; }

	event LogA();
       event LogAChange(bool);

    constructor() {
        LogA();
        isActivatedA = false;
    }

        function isActiveA() public view returns(bool) {
                return isActivatedA ; }
}
