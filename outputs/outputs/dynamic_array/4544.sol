pragma solidity ^0.8.0;
contract SimpleDynamic {
    Proxy admin = Proxy(address(0));
    address proxyAdmin = address(admin);

    function setAdmin(address newAdmin) public {
        proxyAdmin = newAdmin;
    }

    function setAdminUsingAdmin(address newAdmin) public {
        admin = Proxy(newAdmin);
    }
}
