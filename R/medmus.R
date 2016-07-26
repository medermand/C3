

medmus<-function(arg){

  a<-strsplit(arg, "-")

  load("file")

  ind.seg=a[[1]][4] #" Software"
  gra=as.numeric(a[[1]][3]) #14
  job.fam=a[[1]][1] # #"Human Resources (HR)"
  job.sfam=a[[1]][2] #"HR Generalist (HRA)"
  salary=as.numeric(a[[1]][5])


  q1<-which(file$GRADE==gra)
  q2<-which(file$Industry.Segment==ind.seg)
  q3<-which(file$SHORT.CODE==job.fam)
  q4<-which(file$JOB.FAMILY.CODE==job.sfam)

  qe<-intersect(intersect(q1,q2),intersect(q3,q4))

  return(file$salary[qe])
}


