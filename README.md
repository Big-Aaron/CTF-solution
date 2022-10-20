# CTF-solution
一些区块链CTF题解。

为了模拟主链环境，使用hardhat fork主链，然后在remix编译器中打开本项目，并链接本地hardhat网络就好。

```sh
git clone https://github.com/Big-Aaron/CTF-solution.git
cd CTF-solution

npm install

//修改hardhat.config.js中的rpcURI

npx hardhat node

remixd -s ./CTF-solution  --remix-ide https://remix.ethereum.org
```

