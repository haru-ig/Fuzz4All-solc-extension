pragma solidity ^0.8.0;
contract MyContract {
    function myFunction()
        public
    {
        return (20>30);
    }
}
contract MyContract {
    function myFunction()
        public
    {
        return 20 > 30;
    }
}
contract MyContract {
    function myFunction()
        public
    {
        return (20 > 30) > 0;
    }
}
