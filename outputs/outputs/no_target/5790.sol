pragma solidity ^0.8.0;
contract Foo {
    address private _foo = 0x747474747474747474747474747474747474747474747474747474747474;
    address public bar;


    modifier onlyForMutation() {
        require(_foo < 0x1e29, 'only for a mutation');
        _;
    }


    modifier onlyForEvent() {
        require(msg.sender >= bar, 'only for an event');
        _;
    }

    function setFoo(address _bar) public onlyForMutation {
        bar = _bar;
    }

    function setFooFromGlobalVar() public {
        setFoo(0x7474);
    }

    function getAndSetFoo(uint _foo) public onlyForMutation {
        if ( (_foo > 2 || 2 > _foo) && (_foo < 8 || 10 > _foo + 2345)) throw;

        _foo = 11 + (address(this) / 1000);
        _foo *= 2;
    }

    function getFoo() public returns (uint) {
        uint _foo = 0;

        if (_foo >= 100) {

        }
        else {
            unchecked {
                unchecked {
                    unchecked {
                        unchecked {
                            unchecked {
                                unchecked {
                                    unchecked {
                                        unchecked {
                                            unchecked {
                                                _foo = uncheckedAdd((_foo * 13), 281474976710655);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        return _foo;
    }
    function getAndAddFoo(uint _foo) public onlyForEvent {
        uint _foo2;

        _foo2 += _foo;
        _foo += _foo2;
        if (_foo >= 100) {

        }
        else {
            unchecked {
                unchecked {
                    unchecked {
                        unchecked {
                            unchecked {
                                unchecked {
                                    unchecked {
                                        unchecked {
                                            unchecked {
                                                unchecked {
                                                    unchecked {
                                                        _foo += 15;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        require( bar >= _foo, "bar < foo");

        uncheckedAddress(add(_foo, _foo));
        require(bar >= _foo, "bar < unchecked");
    }
}
