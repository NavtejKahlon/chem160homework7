seqlen = c()
sequence = c()
seqmax = c()
for (i in 1:1000){
	n = i
	counter = 1
	while(n != 1){
		if (n%%2 == 0){
			n = as.integer(n/2)
		}
		else {
			n = as.integer(3*n+1)
		}
		counter = counter + 1
		sequence = c(sequence,n)
	}
	seqmax = c(seqmax,max(sequence))
	seqlen = c(seqlen,counter)
}
png("seqlen.png")
plot(seqlen)
dev.off()
png("seqmax.png")
plot(seqmax)
dev.off()
