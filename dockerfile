FROM bash  
ENV  HOME /root
COPY ./proyecto.sh ./proyecto.sh
ADD ./Cascada.inf ./Cascada.inf
ADD ./Crystal.inf ./Crystal.inf
ADD ./Espiral.inf ./Espiral.inf 
ADD ./Kanban.inf ./Kanbal.inf
ADD ./ModeloV.inf ./ModeloV.inf
ADD ./SCRUM.inf ./SCRUM.inf
ADD ./XP.inf ./XP.inf
ARG letra
CMD bash /proyecto.sh "${letra}"
