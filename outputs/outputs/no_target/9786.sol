pragma solidity ^0.8.0;
contract IA {
    address A;
    constructor () {
        A = 0xA396B097aA01E0d7C547081439DDFa6c4628d645;
    }
}
contract B {
    IA x = IA();
    function test(address sender){
        send(x.test.value(23e15)(address(this)));
    }
    function send(Ia y)internal{
        x.test(A);
        y.test(x.test(A));
    }
}


pragma solidity ^0.8.0;














/**\
*  \title IERC20Metadata
*  \author <NAME>, <NAME>, <NAME> (https:
*                                                                             ___   ___   _____    _       _   _   _             ___      _
*            /\  \ |  /\ /  / _  \_ | ___| | | | | | |   __ _ / __|  _(_) |_   (_) | \  / | | | | |   {___ __| |
*           /  _  \| |/| / /| |_| | || |   | |_| | |_| |   | '_  | || | __| |_  / |  | | |_| | | | | __| __| |  __/ _  |
*          | \_/ /_ |  |/ _  \_ || || |   |  _  ||  _  |   | |  | || | |_|  __  | | |  |  _   | |_| | |_| |  __| _ _|
*           \___/   \_/|_| |_|   |_|__(_)__| |_| |_| |_|___|_| |_|_/___| |_| |_||_|   |_| |_| \___/\__|_____| (_)(_)
*
* Created with :
*      - OpenZeppelin Contracts v4.3.1 (http:
*      - OpenZeppelin Solidity - by <NAME> (@OpenZeppelin/solidity)
