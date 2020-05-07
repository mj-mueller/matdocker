FROM openjdk:8

ARG MAT_VERSION=1.10.0
ARG MAT_BUILD=20200225


RUN apt-get update
RUN apt-get install -y wget unzip

RUN wget --mirror -O "MemoryAnalyzer-${MAT_VERSION}.${MAT_BUILD}-linux.gtk.x86_64.zip" \
"https://www.eclipse.org/downloads/download.php?file=/mat/${MAT_VERSION}/rcp/MemoryAnalyzer-${MAT_VERSION}.${MAT_BUILD}-linux.gtk.x86_64.zip&r=1"
RUN unzip "MemoryAnalyzer-${MAT_VERSION}.${MAT_BUILD}-linux.gtk.x86_64.zip"


RUN chmod +x /mat/ParseHeapDump.sh
COPY entrypoint.sh /mat/

ENTRYPOINT ["/mat/entrypoint.sh"]

CMD ["org.eclipse.mat.api:overview", "org.eclipse.mat.api:suspects", "org.eclipse.mat.api:top_components"]
