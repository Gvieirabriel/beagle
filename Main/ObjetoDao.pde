interface ObjetoDao
{
	public <T extends Objeto> T criarObjeto(Class<?> klass, int alturaObjeto, int larguraObjeto);

	public <T extends Objeto> T criarObjeto(Class<?> klass, int alturaObjeto, int larguraObjeto, int coordenadaX, int coordenadaY);

	public <T extends Objeto> T criarObjeto(Class<?> klass, int alturaObjeto, int larguraObjeto, int coordenadaX, int coordenadaY, int coordenadaZ);

	public ArrayList<Objeto> buscaListaObjetosBeagle();

	public void removerObjeto(int id);

}
