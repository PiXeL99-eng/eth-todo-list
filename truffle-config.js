module.exports = {
  networks: {                       //talks to the local blockchain
    development: {
      host: "127.0.0.1",                      //local host
      port: 7545,                             //port that ganache is working on
      network_id: "*" // Match any network id
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}
