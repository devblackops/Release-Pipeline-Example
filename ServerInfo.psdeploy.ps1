Deploy 'Deploy ServerInfo script' {
    By Filesystem {
        FromSource '.\ServerInfo.ps1'
        To 'C:\temp'
        Tagged Prod
    }
}